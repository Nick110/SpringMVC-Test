package com.nothing.Service;

import com.nothing.Dao.IUserDao;
import com.nothing.Dao.UserDaoImpl;
import com.nothing.Model.Equipment;
import com.nothing.Model.User;

import java.util.List;

public class UserServiceImpl implements IUserService{
    private IUserDao userDao;

    public UserServiceImpl() {
        userDao = new UserDaoImpl();
    }

    public User findUserById(int id) {
        return userDao.findUserById(id);
    }
    public void addUser(User user){
        userDao.addUser(user);
    }
    public User selectByName(String login_name){
        return userDao.selectByName(login_name);
    }
    public User selectById(int id){
        return userDao.selectById(id);
    }

    public List<Equipment> selectEqumtById(int user_id) {
        return userDao.selectEqmtById(user_id);
    }
    public List<Equipment> selectAllEquipment() {
        return userDao.selectAllEquipment();
    }

    public void addEquipment(Equipment equipment) {
        userDao.addEquipment(equipment);
    }
}
