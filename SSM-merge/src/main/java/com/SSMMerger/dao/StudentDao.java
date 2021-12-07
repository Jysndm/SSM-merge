package com.SSMMerger.dao;

import com.SSMMerger.domain.Student;

import java.util.List;

public interface StudentDao {
    int insertStudent(Student student);
    List<Student> selectStudent();
}
