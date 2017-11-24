package com.nothing.Dao;

import com.nothing.Model.Equipment;
import com.nothing.Model.User;

import java.util.List;

public interface IUserDao {
    //这里以接口形式定义了数据库操作方法,我们只需在Mybatis映射文件中对其进行映射就可以直接使用
    public User findUserById(int id); //查询
    public void addUser(User user); //添加
    public User selectById(int id);
    public User selectByName(String name);
    public List<Equipment> selectEqmtById (int user_id);
    public List<Equipment> selectAllEquipment();
    public void addEquipment(Equipment equipment);
}