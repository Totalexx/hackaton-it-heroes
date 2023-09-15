package ru.totalexx.contractlifemarch.service.impl;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import ru.totalexx.contractlifemarch.model.Role;
import ru.totalexx.contractlifemarch.model.enums.ContractCheckResult;
import ru.totalexx.contractlifemarch.repository.RoleRepository;
import ru.totalexx.contractlifemarch.service.RoleService;

import java.util.List;

@Service
@AllArgsConstructor
public class RoleServiceImpl implements RoleService {

    RoleRepository roleRepository;

    @Override
    public Role getNextCheckerRole(Role role, ContractCheckResult checkResult) {
        switch (checkResult) {
            case NEXT:
                return getRoleWithPriorityOffset(role, -1);
            case BACK:
                return getRoleWithPriorityOffset(role, 1);
            case ACCEPTED:
            case REJECTED:
            case default:
                return role;
        }
    }

    @Override
    public Role getFirstChecker() {
        List<Role> roles = getAllRoles();
        return roles.get(roles.size() - 2);
    }

    private Role getRoleWithPriorityOffset(Role role, int offset) {
        List<Role> roles = getAllRoles();
        int rolePosition = roles.indexOf(role);
        return roles.get(rolePosition + offset);
    }

    private List<Role> getAllRoles() {
        return roleRepository.findAllByOrderByPriority();
    }
}
