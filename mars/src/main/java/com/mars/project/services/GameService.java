package com.mars.project.services;

import java.util.List;

import com.mars.project.model.Game;
import com.mars.project.model.Platform;

import org.springframework.stereotype.Service;

@Service
public interface GameService {
    public List<Game> listGame();

    public int addGame(Game game);

    public List<Game> getGameDetail(int game_id);
}
