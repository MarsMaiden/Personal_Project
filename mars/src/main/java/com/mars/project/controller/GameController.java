package com.mars.project.controller;

import java.util.List;

import com.mars.project.model.Game;
import com.mars.project.model.Status;
import com.mars.project.services.GameService;
import com.mars.project.services.StatusService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

@Controller
@RequestMapping("/game")
public class GameController {

    @Autowired
    private GameService gameService;

    @Autowired
    private StatusService statusService;

    @GetMapping("/list")
    public String listGame(Model model) {
        Game game = new Game();
        model.addAttribute("game", game);
        model.addAttribute("listGame", gameService.listGame());
        return "game_list";
    }

    @GetMapping("/form")
    public String formGame(Model model) {

        Game game = new Game();
        List<Status> listStatus = statusService.listStatus();
        model.addAttribute("games", game);
        model.addAttribute("listStatus", listStatus);

        return "add_game";
    }

    @PostMapping("/add")
    public String addGame(@ModelAttribute("games") Game game, BindingResult errors, Model model,
            RedirectAttributes attribute) {

        List<Status> listStatus = statusService.listStatus();

        model.addAttribute("listStatus", listStatus);
        int result = gameService.addGame(game);

        return "redirect:/game/form";
    }
}
