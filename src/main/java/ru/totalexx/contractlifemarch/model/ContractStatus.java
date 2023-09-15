package ru.totalexx.contractlifemarch.model;

import lombok.*;
import ru.totalexx.contractlifemarch.model.enums.ContractCheckResult;

import javax.persistence.*;

@Entity
@Table(name = "contract_status")
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ContractStatus {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "contract_id")
    private Contract contract;

    @ManyToOne
    private Role currentRole;

    @Enumerated(EnumType.STRING)
    @Column(name = "contract_check_result")
    private ContractCheckResult contractCheckResult;

    @Column(name = "owner_checked")
    private Boolean ownerChecked = false;

    @Column(name = "comment")
    private String comment;

    @OneToOne
    @JoinColumn(name = "previous_contract_status_id")
    private ContractStatus previousContractStatus;

}