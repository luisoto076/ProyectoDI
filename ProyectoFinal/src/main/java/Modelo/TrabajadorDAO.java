/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import Mapeo.Trabajador;

/**
 *
 * @author luis
 */
public class TrabajadorDAO {
    
    private SessionFactory sessionFactory;
    
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    
    /**
     * Método que guarda una trabajador en la base de datos
     * @param trabajador 
     */
    public void guardar(Trabajador trabajador) {
    
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
           tx = session.beginTransaction();
         
           session.persist(trabajador);
           
           tx.commit();
        }
        catch (Exception e) {
           if (tx!=null){ 
               tx.rollback();
           }
           e.printStackTrace(); 
        }finally {
           session.close();
        }
    
    }
    
    /**
     * Método que actualiza a una trabajador en la base de datos
     * @param trabajador 
     */
    public void actualizar(Trabajador trabajador) {
    
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
           tx = session.beginTransaction();
         
           session.update(trabajador);
           
           tx.commit();
        }
        catch (Exception e) {
           if (tx!=null){ 
               tx.rollback();
           }
           e.printStackTrace(); 
        }finally {
           session.close();
        }
    
    }
    
    /**
     * Método que elimina a una trabajador de la base de datos
     * @param trabajador 
     */
    public void eliminar(Trabajador trabajador) {
    
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
           tx = session.beginTransaction();
         
           session.delete(trabajador);
           
           tx.commit();
        }
        catch (Exception e) {
           if (tx!=null){ 
               tx.rollback();
           }
           e.printStackTrace(); 
        }finally {
           session.close();
        }
    
    }
    /**
     * Método que regresa a una trabajador, cuyo id es el que se pasa como 
     * parámetro
     * @param idTrabajador
     * @return 
     */
    public Trabajador getTrabajador(long idTrabajador) {
        Trabajador trabajador = null;
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
           tx = session.beginTransaction();
           trabajador = (Trabajador)session.get(Trabajador.class, idTrabajador);
           tx.commit();
        }
        catch (Exception e) {
           if (tx!=null){ 
               tx.rollback();
           }
           e.printStackTrace(); 
        }finally {
           session.close();
        }
        return trabajador;
    }
    
    
}
