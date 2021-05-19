package com.voice.ohnoproduct.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.voice.ohnoproduct.entity.Player;
import com.voice.ohnoproduct.repository.PlayerRepository;

@Service
public class PlayerService {
	   @Autowired
	    private PlayerRepository repo;
	
	public Player save(Player player) {
        return repo.save(player);
    }
	public List<Player> findAll() {
        return repo.findAll();
    }
	
	public Player findOne(Long id) {
        return repo.getOne(id);
    }
	
	public void delete(Long id) {
		Player obj = repo.getOne(id);
        repo.delete(obj);
       
    }
}
