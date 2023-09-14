package ru.totalexx.contractlifemarch.service.impl;

import org.springframework.stereotype.Service;
import ru.totalexx.contractlifemarch.model.Contract;
import ru.totalexx.contractlifemarch.model.ContractStatus;
import ru.totalexx.contractlifemarch.model.User;
import ru.totalexx.contractlifemarch.service.ContractService;

@Service
public class ContractServiceImpl implements ContractService {

    @Override
    public void createContract(User owner, String text) {

    }

    @Override
    public void setContractStatus(Contract contract, ContractStatus contractStatus) {

    }
}
