package ru.totalexx.contractlifemarch.service;

import ru.totalexx.contractlifemarch.model.Role;
import ru.totalexx.contractlifemarch.model.enums.ContractCheckResult;

public interface RoleService {
    Role getNextCheckerRole(Role role, ContractCheckResult checkResult);
    Role getFirstChecker();
}
