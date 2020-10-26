package fxb.java.recruit.util.SMSUtil;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

public class Sender {
    //发送验证码的请求路径URL
    private static final String SERVER_URL = "https://api.netease.im/sms/sendcode.action";
    //网易云信分配的账号，Appkey
    private static final String APP_KEY = "9e5b48740e4fcae72b290563af88472c";
    //网易云信分配的密钥，appSecret
    private static final String APP_SECRET = "ae94832b91af";
    //随机数
    private static final String NONCE = "1234";
    //短信模板ID
    private static final String TEMPLATEID = "14887184";
    //手机号

    //验证码长度，范围4～10，默认为4
    private static final String CODELEN = "4";

    public static int sendCode(String MOBILE) {
        DefaultHttpClient httpClient = new DefaultHttpClient();
        HttpPost httpPost = new HttpPost(SERVER_URL);
        String curTime = String.valueOf((new Date()).getTime() / 1000L);

        String checkSum = CheckSumBuilder.getCheckSum(APP_SECRET, NONCE, curTime);


        int CODEinString = new Random().nextInt(9999 - 1000 + 1) + 1000;
        String CODE = String.valueOf(CODEinString);
        // 设置请求的header
        httpPost.addHeader("AppKey", APP_KEY);
        httpPost.addHeader("Nonce", NONCE);
        httpPost.addHeader("CurTime", curTime);
        httpPost.addHeader("CheckSum", checkSum);
        httpPost.addHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");

        //requestBody 参数
        List<NameValuePair> nvps = new ArrayList<>();
        nvps.add(new BasicNameValuePair("templateid", TEMPLATEID));
        nvps.add(new BasicNameValuePair("mobile", MOBILE));
//        nvps.add(new BasicNameValuePair("codeLen", CODELEN));
        nvps.add(new BasicNameValuePair("authCode", CODE));


        // 执行请求
        try {
            httpPost.setEntity(new UrlEncodedFormEntity(nvps, "utf-8"));
            HttpResponse response = httpClient.execute(httpPost);
            System.out.println("请求已发出=========================");
            System.out.println(EntityUtils.toString(response.getEntity(), "utf-8"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        return 0;

    }
}
