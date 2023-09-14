package ru.totalexx.contractlifemarch.service;

import ru.totalexx.contractlifemarch.model.Contract;
import ru.totalexx.contractlifemarch.model.ContractStatus;
import ru.totalexx.contractlifemarch.model.User;

public interface ContractService {
    void createContract(User owner, String text);
    void setContractStatus(Contract contract, ContractStatus contractStatus);

}
