package com.mars.project.servicesimpl;

import com.mars.project.mappers.GameMapper;
import com.mars.project.services.GameService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GameServiceImpl implements GameService {
    @Autowired
    private GameMapper gameMapper;

}
