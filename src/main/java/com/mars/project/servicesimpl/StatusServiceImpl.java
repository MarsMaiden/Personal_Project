package com.mars.project.servicesimpl;

import java.util.List;

import com.mars.project.mappers.StatusMapper;
import com.mars.project.model.Status;
import com.mars.project.services.StatusService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StatusServiceImpl implements StatusService {
    @Autowired
    private StatusMapper statusMapper;

    @Override
    public List<Status> listStatus() {
        return statusMapper.listStatus();
    }

}
