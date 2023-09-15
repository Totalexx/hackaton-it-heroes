package ru.totalexx.contractlifemarch.model;

import lombok.*;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "contract")
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Contract extends AbstractEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "owner_id")
    private User owner;

    @Column(name = "contract_text", length = 10485760)
    private String contractText;

    @OneToMany(mappedBy = "contract", orphanRemoval = true, cascade=CascadeType.ALL)
    private List<ContractStatus> contractStatuses = new ArrayList<>();

    @OneToOne(cascade=CascadeType.ALL)
    private ContractStatus lastContractStatus;
}