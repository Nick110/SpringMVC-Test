package com.nothing.Service;

import com.nothing.Model.Equipment;
import com.nothing.Model.User;

import java.util.List;

public interface IUserService {
    public User findUserById(int id);
    public void addUser(User user);
//    public boolean login(String username, String password);
    public User selectByName(String login_name);
    public User selectById(int id);
    public List<Equipment> selectEqumtById(int user_id);
    public List<Equipment> selectAllEquipment();
    public void addEquipment(Equipment equipment);
}
