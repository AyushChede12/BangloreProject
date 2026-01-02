package com.society.application.repository;

import com.society.application.model.NewSavingAccount;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NewSavingAccountRepo extends JpaRepository<NewSavingAccount, Long> {

	List<NewSavingAccount> findByuniqueId(String bankId);
}
