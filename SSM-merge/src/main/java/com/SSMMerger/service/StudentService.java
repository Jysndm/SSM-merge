package com.SSMMerger.service;

import com.SSMMerger.domain.Student;

import java.util.List;

public interface StudentService {
    int addStudent(Student student);
    List<Student> findStudent();

}
