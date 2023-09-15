package ru.totalexx.contractlifemarch.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.totalexx.contractlifemarch.model.ContractTemplate;

import java.util.Optional;

public interface ContractTemplateRepository extends JpaRepository<ContractTemplate, Long> {
    Optional<ContractTemplate> findByName(String name);
}