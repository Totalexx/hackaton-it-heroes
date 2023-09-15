package ru.totalexx.contractlifemarch.service;

import ru.totalexx.contractlifemarch.model.ContractStatus;
import ru.totalexx.contractlifemarch.model.User;
import ru.totalexx.contractlifemarch.model.enums.ContractCheckResult;

public interface ContractStatusService {
    ContractStatus getInitialStatus(User owner);

    ContractStatus getNextStatus(ContractStatus status, ContractCheckResult checkResult, String comment);
}
