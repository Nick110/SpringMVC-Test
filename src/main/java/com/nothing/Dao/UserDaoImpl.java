package com.nothing.Dao;

import com.nothing.Model.Equipment;
import com.nothing.Model.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

public class UserDaoImpl implements IUserDao{
    private SqlSessionFactory sessionFactory;
    private SqlSession session;
    public UserDaoImpl() {
        String resource = "conf.xml";
        try {
            Reader reader = Resources.getResourceAsReader(resource);
            sessionFactory = new SqlSessionFactoryBuilder().build(reader);
            session = sessionFactory.openSession();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public User findUserById(int id) {
        String statement = "userMapper.findUserById";
        User user = (User)session.selectOne(statement, 2);
        return user;
    }
    public void addUser(User user) {
        String statement = "userMapper.addUser";
        session.insert(statement, user);
        session.commit();  //一定要记得commit
    }
    public User selectByName(String login_name){
        String statement = "userMapper.selectByName";
        User user = session.selectOne(statement, login_name);
        return user;
    }
    public User selectById(int id){
        String statement = "userMapper.selectByName";
        User user = session.selectOne(statement, id);
        return user;
    }
    public List<Equipment> selectEqmtById(int user_id){
        String statement = "userMapper.selectEqmtById";
        List<Equipment> equipments = session.selectList(statement, user_id);
        return equipments;
    }

    public List<Equipment> selectAllEquipment() {
        String statement = "userMapper.selectAllEquipment";
        List<Equipment> equipments = session.selectList(statement);
        return equipments;
    }
    public void addEquipment(Equipment equipment){
        String statement = "userMapper.addEquipment";
        session.insert(statement, equipment);
        session.commit();
    }
}