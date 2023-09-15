package ru.totalexx.contractlifemarch.controller;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.totalexx.contractlifemarch.model.Contract;
import ru.totalexx.contractlifemarch.service.ContractService;

@Controller
@RequestMapping("contract")
@AllArgsConstructor
public class ContractController {

    ContractService contractService;

    @GetMapping("{id}")
    public String getContract(@PathVariable Long id, Model model) {
        Contract contract = contractService.getContract(id);

        model.addAttribute("contract", contract);
        model.addAttribute("contractText", contract.getContractText());
        model.addAttribute("isEditor", true);
        return "contract-editor/contract";
    }

}
