package com.SSMMerger.controller;


import com.SSMMerger.domain.Student;
import com.SSMMerger.service.StudentService;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Resource
    private StudentService service;
    //注册学生
    @RequestMapping(value ="/addStudent.do",method = RequestMethod.POST)
    public ModelAndView addStudent(Student student) {
        ModelAndView mv =new ModelAndView();
        String tips= "注册失败";
        //调用service处理student
    int nums = service.addStudent(student);
        if (nums > 0){
            tips="学生【"+student.getName()+"】注册成功";
        }
        //添加数据
        mv.addObject("tips",tips);
        //指定结果页面
       mv.setViewName("result");
       return mv;
    }
    @RequestMapping("/queryStudent.do")
    @ResponseBody
    public List<Student> queryStudent(){
        List<Student> students = service.findStudent();
        return students;
    }
}