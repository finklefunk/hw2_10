package org.example;

import org.hibernate.Session;
import org.hibernate.Transaction;

public class Main {
    public static void main(String[] args) {
        System.out.println("Hello world!");

        Session session = HibernateUtil.getInstance().getSessionFactory().openSession();
        Person p = session.get(Person.class, 1L);
        session.close();

//Print it
        System.out.println(p);

        //Create Java object
        Person p1 = new Person();
        p1.setId(3L);
        p1.setName("John Doe2");

//Persist object
        Session session1 = HibernateUtil.getInstance().getSessionFactory().openSession();
        Transaction transaction = session1.beginTransaction();
        session1.persist(p1);
        transaction.commit();
        session1.close();
    }
}