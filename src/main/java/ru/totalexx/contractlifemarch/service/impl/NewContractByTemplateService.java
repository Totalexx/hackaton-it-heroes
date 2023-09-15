package ru.totalexx.contractlifemarch.service.impl;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import ru.totalexx.contractlifemarch.repository.ContractTemplateRepository;

@Service
@AllArgsConstructor
public class NewContractByTemplateService {

    ContractTemplateRepository contractTemplateRepository;

    public String getTemplate(String templateName) {
        return contractTemplateRepository.findByName(templateName).get().getText();
    }
}
