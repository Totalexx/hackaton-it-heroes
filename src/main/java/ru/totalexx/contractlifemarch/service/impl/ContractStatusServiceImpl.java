package ru.totalexx.contractlifemarch.service.impl;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import ru.totalexx.contractlifemarch.model.ContractStatus;
import ru.totalexx.contractlifemarch.model.User;
import ru.totalexx.contractlifemarch.model.enums.ContractCheckResult;
import ru.totalexx.contractlifemarch.service.ContractStatusService;
import ru.totalexx.contractlifemarch.service.RoleService;

@AllArgsConstructor
@Service
public class ContractStatusServiceImpl implements ContractStatusService {

    RoleService roleService;

    @Override
    public ContractStatus getInitialStatus(User owner) {
        ContractStatus status = ContractStatus
                .builder()
                .contractCheckResult(ContractCheckResult.CREATED)
                .ownerChecked(true)
                .currentRole(roleService.getFirstChecker())
                .build();

        return status;
    }

    @Override
    public ContractStatus getNextStatus(ContractStatus status, ContractCheckResult checkResult, String comment) {
        return ContractStatus
                .builder()
                .contractCheckResult(checkResult)
                .ownerChecked(status.getOwnerChecked())
                .currentRole(roleService.getNextCheckerRole(status.getCurrentRole(), checkResult))
                .comment(comment)
                .contract(status.getContract())
                .build();
    }

}
