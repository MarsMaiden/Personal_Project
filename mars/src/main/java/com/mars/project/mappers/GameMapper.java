package com.mars.project.mappers;

import java.util.List;

import com.mars.project.model.Game;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface GameMapper {
    public List<Game> listGame();

    public int addGame(Game game);

    public List<Game> getGameDetail(int game_id);
}
