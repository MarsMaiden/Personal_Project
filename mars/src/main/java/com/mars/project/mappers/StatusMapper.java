package com.mars.project.mappers;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

import com.mars.project.model.Status;

@Mapper
public interface StatusMapper {
    public List<Status> listStatus();
}
