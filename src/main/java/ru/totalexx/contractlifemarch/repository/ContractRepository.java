package ru.totalexx.contractlifemarch.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.totalexx.contractlifemarch.model.Contract;

public interface ContractRepository extends JpaRepository<Contract, Long> {
}