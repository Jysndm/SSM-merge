package com.SSMMerger.service.impl;

import com.SSMMerger.dao.StudentDao;
import com.SSMMerger.domain.Student;
import com.SSMMerger.service.StudentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class StudentServiceImpl implements StudentService {
//    使用自动注入@Autowired,@Resource

    @Resource
    private StudentDao studentDao;
    @Override
    public int addStudent(Student student) {
        int nums =studentDao.insertStudent(student);
        return nums;
    }

    @Override
    public List<Student> findStudent() {
        return studentDao.selectStudent();
    }
}
