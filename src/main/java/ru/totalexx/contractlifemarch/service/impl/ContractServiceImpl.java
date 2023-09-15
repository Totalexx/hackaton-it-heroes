package ru.totalexx.contractlifemarch.service.impl;

import lombok.AllArgsConstructor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import ru.totalexx.contractlifemarch.model.Contract;
import ru.totalexx.contractlifemarch.model.ContractStatus;
import ru.totalexx.contractlifemarch.model.User;
import ru.totalexx.contractlifemarch.repository.ContractRepository;
import ru.totalexx.contractlifemarch.repository.ContractStatusRepository;
import ru.totalexx.contractlifemarch.repository.ContractTemplateRepository;
import ru.totalexx.contractlifemarch.repository.UserRepository;
import ru.totalexx.contractlifemarch.service.ContractService;
import ru.totalexx.contractlifemarch.service.ContractStatusService;

import java.util.List;

@Service
@AllArgsConstructor
public class ContractServiceImpl implements ContractService {

    ContractStatusService contractStatusService;
    ContractRepository contractRepository;
    UserRepository userRepository;
    ContractStatusRepository contractStatusRepository;

    @Override
    public Contract createContract(String text) {
        User owner = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        Contract contract = Contract.builder().owner(owner).contractText(text).build();
        ContractStatus status = contractStatusService.getInitialStatus(owner);
        status.setContract(contract);
        contract.setLastContractStatus(status);

        contractRepository.save(contract);
//        contractStatusRepository.save(status);
        return contract;
    }

    @Override
    public void setContractStatus(Contract contract, ContractStatus contractStatus) {

    }

    @Override
    public List<Contract> getContracts() {
        User owner = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        return contractRepository.findAllByOwnerOrderByIdAsc(owner);
    }

    public Contract getContract(Long id) {
        return contractRepository.findById(id).get();
    }
}
