package com.mars.project.services;

import java.util.List;

import com.mars.project.model.Game;

import org.springframework.stereotype.Service;

@Service
public interface GameService {
    public List<Game> listGame();
}
