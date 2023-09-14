package ru.totalexx.contractlifemarch.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.totalexx.contractlifemarch.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {
}