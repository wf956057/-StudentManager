package com.student.controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.student.bean.Student;
import com.student.dao.StudentDao;
import com.sun.java_cup.internal.runtime.virtual_parse_stack;

@Controller
public class StudentController {
	/**
	 *
	 * 从数据库中获取全部学生信息，将数据返回给主页index,jsp
	 *
	 * @param model
	 * @return 返回值类型： String
	 */
	@RequestMapping(value = "/all")
	public String queryAll(Model model) {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		// 从ioc容器中获取dao
		StudentDao dao = (StudentDao) context.getBean("dao");
		model.addAttribute("students", dao.queryAll());

		return "index";
	}

	/**
	 * 通过姓名查找学生，使用模糊查找，将结果返回给index.jsp
	 *
	 * @param name
	 * @param model
	 * @return 返回值类型： String
	 */
	@RequestMapping(value = "/queryByName")
	public String queryByName(String name, Model model) {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		// 从ioc容器中获取dao
		StudentDao dao = (StudentDao) context.getBean("dao");
		model.addAttribute("students", dao.queryByName(name));
		return "index";
	}

	/**
	 * 添加新学生，并将结果返回给index页面，由index转发到主页
	 *
	 * @param name
	 * @param birthday
	 * @param age
	 * @param score
	 * @param telephone
	 * @param model
	 * @param poslnumber
	 * @param address
	 * @param classid
	 * @return 返回值类型： String
	 */
	@RequestMapping(value = "/add")
	public String addStu(String name, String birthday, String age, String score, String telephone, String poslnumber,
			String address, String classid, Model model) {

		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		StudentDao dao = (StudentDao) context.getBean("dao");
		Student student = new Student();
		student.setName(name);
		student.setTelephone(telephone);
		student.setPoslnumber(poslnumber);
		student.setBirthday(birthday);
		student.setAge(Integer.valueOf(age));
		student.setScore(Double.parseDouble(score));
		student.setAddress(address);
		student.setClassid(Integer.valueOf(classid));

		model.addAttribute("students", dao.queryAll());
		boolean result = dao.addStu(student);

		if (result) {
			model.addAttribute("msg", "<script>alert('添加成功！')</script>");
		} else {
			model.addAttribute("msg", "<script>alert('添加失敗！')</script>");
		}

		model.addAttribute("students", dao.queryAll());
		return "index";
	}

	/**
	 * 通过id删除学生
	 *
	 * @param id
	 * @param model
	 * @return 返回值类型： String
	 */
	@RequestMapping(value = "/deleteById")
	public String deleteById(String id, Model model) {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		StudentDao dao = (StudentDao) context.getBean("dao");
		boolean result = dao.deleteStu(Integer.parseInt(id));

		if (result) {
			model.addAttribute("msg", msg("删除成功！"));
		} else {
			model.addAttribute("msg", msg("删除失敗！"));
		}

		model.addAttribute("students", dao.queryAll());
		return "index";
	}

	/**
	 *
	 * @param id
	 * @param name
	 * @param birthday
	 * @param poslnumber
	 * @param age
	 * @param score
	 * @param model
	 * @param address
	 * @param classid
	 * @return 返回值类型： String
	 */
	@RequestMapping(value = "/update")
	public String updateStu(String id, String name, String birthday, String age, String score, String telephone,
			String poslnumber, String address, String classid, Model model) {

		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		StudentDao dao = (StudentDao) context.getBean("dao");
		Student student = new Student();
		student.setId(Integer.parseInt(id));
		student.setName(name);
		student.setTelephone(telephone);
		student.setTelephone(poslnumber);
		student.setBirthday(birthday);
		student.setAge(Integer.valueOf(age));
		student.setScore(Double.parseDouble(score));
		student.setAddress(address);
		student.setClassid(Integer.valueOf(classid));

		boolean result = dao.updateStu(student);

		if (result) {
			model.addAttribute("msg", msg("修改成功"));
		} else {
			model.addAttribute("msg", msg("修改失败"));
		}

		model.addAttribute("students", dao.queryAll());
		return "index";
	}

	/**
	 * 要弹出的页面消息
	 *
	 * @param msg
	 * @return 返回值类型： String
	 */
	public String msg(String msg) {
		return "<script>alert('" + msg + "')</script>";
	}
}
