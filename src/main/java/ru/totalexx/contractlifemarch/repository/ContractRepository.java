package ru.totalexx.contractlifemarch.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.totalexx.contractlifemarch.model.Contract;
import ru.totalexx.contractlifemarch.model.User;

import java.util.List;

public interface ContractRepository extends JpaRepository<Contract, Long> {
    List<Contract> findAllByOwnerOrderByIdAsc(User owner);
}