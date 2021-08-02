package com.mars.project.controller;

import com.mars.project.model.Game;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

@Controller
@RequestMapping("/game")
public class GameController {

    @GetMapping("/list")
    public String listGame(Model model) {
        Game game = new Game();
        model.addAttribute("game", game);
        model.addAttribute("listGame", game);
        return "list_game";
    }
}
