package fxb.java.recruit.service;

import fxb.java.recruit.entity.UserEntity;

public interface UserService {

    UserEntity getUser(int userId);

    boolean updateUser(UserEntity userEntity);

    boolean registerUser(UserEntity userEntity);

    boolean loginUser(String mobile, String password);

    UserEntity getUserByMobile(String mobile);
}
