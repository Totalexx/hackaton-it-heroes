package ru.totalexx.contractlifemarch.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.totalexx.contractlifemarch.model.ContractStatus;

public interface ContractStatusRepository extends JpaRepository<ContractStatus, Long> {
}