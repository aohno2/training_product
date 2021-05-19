package com.voice.ohnoproduct.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.voice.ohnoproduct.entity.Player;

@Repository
public interface PlayerRepository extends JpaRepository<Player, Long>{

	public Player getOne(Long id);

    @Modifying 
    @Query(value = "DELETE FROM player WHERE id = :id",nativeQuery = true) 
    void deleteById(@Param("id") Long id); 
}
