package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import model.Student;

public class StudentDaoImplementation implements StudentDao {

	SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void create(Student stud) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.persist(stud);
		session.getTransaction().commit();

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Student> showAllStudents() {
		return sessionFactory.openSession().createQuery("from Student").list();

	}

	@Override
	public void deleteStudentById(int id) {
		Session sess = sessionFactory.openSession();
		sess.beginTransaction();
		// sess.createQuery("delete from Student where id = : id");
		Student stu1 = (Student) sess.load(Student.class, id);
		sess.delete(stu1);
		// sess.update();
		sess.getTransaction().commit();

	}

	@Override
	public Student getStudentById(int id) {
		Session sess = sessionFactory.openSession();
		sess.beginTransaction();
		Student stu = (Student) sess.load(Student.class, id);
		return stu;

	}

	@Override
	public void updateStudent(Student stu) {
		Session sess = sessionFactory.openSession();
		sess.beginTransaction();
		sess.update(stu);
		sess.getTransaction().commit();

	}
}