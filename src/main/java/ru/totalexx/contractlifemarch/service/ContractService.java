package ru.totalexx.contractlifemarch.service;

import ru.totalexx.contractlifemarch.model.Contract;
import ru.totalexx.contractlifemarch.model.ContractStatus;

import java.util.List;

public interface ContractService {
    Contract createContract(String text);
    void setContractStatus(Contract contract, ContractStatus contractStatus);
    List<Contract> getContracts();

    Contract getContract(Long id);

}
