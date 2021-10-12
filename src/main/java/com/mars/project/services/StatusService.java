package com.mars.project.services;

import java.util.List;

import com.mars.project.model.Status;

import org.springframework.stereotype.Service;

@Service
public interface StatusService {
    public List<Status> listStatus();
}
