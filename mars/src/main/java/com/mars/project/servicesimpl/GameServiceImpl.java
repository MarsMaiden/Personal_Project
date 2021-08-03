package com.mars.project.servicesimpl;

import java.util.List;

import com.mars.project.mappers.GameMapper;
import com.mars.project.model.Game;
import com.mars.project.services.GameService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GameServiceImpl implements GameService {

    @Autowired
    private GameMapper gameMapper;

    @Override
    public List<Game> listGame() {
        return gameMapper.listGame();
    }

    @Override
    public int addGame(Game game) {
        int result = gameMapper.addGame(game);
        return result;
    }
}
