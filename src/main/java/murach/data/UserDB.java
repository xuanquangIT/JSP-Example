package murach.data;

import jakarta.persistence.*;

import murach.business.User;

public class UserDB {
    public static void insert(User user) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        try {
            trans.begin();
            // Use merge instead of persist to handle detached entities
            em.merge(user);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }

    public static void update(User user){
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        try{
            trans.begin();
            em.merge(user);
            trans.commit();
        }catch(Exception e){
            trans.rollback();
            e.printStackTrace();
        }finally{
            em.close();
        }
    }

    public static void delete(User user){
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        try{
            trans.begin();
            User managedUser = em.find(User.class, user.getEmail());
            if(managedUser != null){
                em.remove(managedUser);
            }
            trans.commit();
        }catch(Exception e){
            trans.rollback();
            e.printStackTrace();
        }finally{
            em.close();
        }
    }

    public static boolean emailExists(String email){
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        try{
            User user = em.find(User.class, email);
            return user != null;
        }finally{
            em.close();
        }
    }

    public static User selectUser(String email){
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        try{
            return em.find(User.class, email);
        }finally{
            em.close();
        }
    }
}


