var href = window.location.href;

var box = new Vue({
    el: '#position_content',
    data: {
        position: [{}],
        department: [{}],
        company: [{}],
        category: [{}],
        reviews: [{}]
    },
    created: function () {
        this.$nextTick(function () {
            $.ajax({
                url: href + "/1",
                type: "post",
                dataType: "json",
                success: function (msg) {
                    box.position = msg.position;
                    box.department = msg.department;
                    box.company = msg.company;
                    box.category = msg.category;

                    console.log(msg);

                    box.reviews.pop();
                    $(msg.comList.list).each(function (key, val) {
                        box.reviews.push({
                            userName: val.nickname,
                            reviewDetail: val.content.replace(/<[^>]+>/g, "")
                        });
                    });

                    if (msg.user != null) {
                        header.type = 'user';
                        header.person.user = msg.user;
                    } else if (msg.hr != null) {
                        header.type = 'hr';
                        header.person.hr = msg.hr;
                    }
                },
                error: function (msg) {
                    console.log(msg);
                }
            });
        });
    }

});


var favorFlag;
// 页面加载时，查询该职位是否已收藏，并根据查询结果改变按钮样式
$(document).ready(function () {
    $.ajax({
        url: "/user/favorOrNot/" + posId,
        type: "get",
        dataType: "json",
        success: function (msg) {
            if (msg == "0") {
                $("#favor_tag").css("background-color", "#3992d6").css("border", "1px solid #3992d6").text("收藏");
                favorFlag = 0;
            } else {
                $("#favor_tag").css("background-color", "#707070").css("border", "1px solid #707070").text("取消收藏");
                favorFlag = 1;
            }
        },
        error: function (msg) {
            console.log(msg);
        }
    });

    $.ajax({
        url: "/user/applyOrNot/" + posId,
        type: "get",
        dataType: "json",
        success: function (msg) {
            if (msg == "0") {
                $("#apply_tag").css("background-color", "#3992d6").css("border", "1px solid #3992d6").text("申请");
                applyFlag = 0;
            } else {
                $("#apply_tag").css("background-color", "#707070").css("border", "1px solid #707070").text("取消申请");
                applyFlag = 1;
            }
        },
        error: function (msg) {
            console.log(msg);
        }
    });
});

var index = href.lastIndexOf("\/");  // "/"的最后一个位置下标
var posId = href.substr(index + 1, href.length);
// document.getElementById("apply_tag").setAttribute("href","http://localhost:8080/user/apply/"+posId);
// $("#apply_tag").attr("href", "/user/apply/" + posId);
// 点击事件，未收藏则收藏，已收藏则取消收藏
$("#favor_tag").click(function () {
    if (favorFlag == 0) {
        $.ajax({
            url: "/user/favor/" + posId,
            type: "get",
            dataType: "text",
            success: function (msg) {
                if (msg == "success") {
                    $("#favor_tag").css("background-color", "#707070").css("border", "1px solid #707070").text("取消收藏");
                    favorFlag = 1;
                } else {
                    console.log(msg);
                }
            },
            error: function (msg) {
                console.log(msg);
            }
        });
        window.location.reload();
    } else {
        $.ajax({
            url: "/user/disfavor/" + posId,
            type: "get",
            dataType: "text",
            success: function (msg) {
                if (msg == "success") {
                    $("#favor_tag").css("background-color", "#3992d6").css("border", "1px solid #3992d6").text("收藏");
                    favorFlag = 0;
                } else {
                    console.log(msg)
                }
            },
            error: function (msg) {
                console.log(msg);
            }
        });
    }
});

var applyFlag;
// 点击事件，未申请点击则申请，已申请再点击则取消申请
$("#apply_tag").click(function () {
    if (applyFlag == 0) {
        $.ajax({
            url: "/user/apply/" + posId,
            type: "get",
            dataType: "text",
            success: function (msg) {
                if (msg == "success") {
                    $("#apply_tag").css("background-color", "#707070").css("border", "1px solid #707070").text("取消申请");
                    applyFlag = 1;
                } else {
                    console.log(msg);
                }
            },
            error: function (msg) {
                console.log(msg);
            }
        });
        window.location.reload();
    } else {
        $.ajax({
            url: "/user/disapply/" + posId,
            type: "get",
            dataType: "text",
            success: function (msg) {
                if (msg == "success") {
                    $("#apply_tag").css("background-color", "#3992d6").css("border", "1px solid #3992d6").text("申请");
                    applyFlag = 0;
                } else {
                    console.log(msg)
                }
            },
            error: function (msg) {
                console.log(msg);
            }
        });
    }
});

//隐藏表单项提交
$("#posId").val(posId);
