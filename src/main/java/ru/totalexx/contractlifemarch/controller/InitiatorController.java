package ru.totalexx.contractlifemarch.controller;

import lombok.AllArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ru.totalexx.contractlifemarch.model.User;
import ru.totalexx.contractlifemarch.service.ContractService;
import ru.totalexx.contractlifemarch.service.impl.NewContractByTemplateService;

@Controller
@RequestMapping("initiator")
@AllArgsConstructor
public class InitiatorController {

    NewContractByTemplateService newContractByTemplateService;
    ContractService contractService;

    @GetMapping
    public String getMainPage(Model model) {
        model.addAttribute("contracts", contractService.getContracts());
        return "initiator/main";
    }
    @GetMapping("/create/contract/{templateName}")
    public String getCreateContractPage(@PathVariable String templateName, Model model) {

        String template = newContractByTemplateService.getTemplate(templateName);
        model.addAttribute("contractText", template);
        return "contract-editor/contract";
    }

    @PostMapping("/create/save")
    public String saveNewContract(@RequestBody String text) {
        contractService.createContract(text);
        return "initiator/main";
    }



}
