package ru.totalexx.contractlifemarch.model;

import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "role")
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Role extends AbstractEntity{
    @Id
    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "localized_name")
    private String localizedName;

    @Column(name = "priority")
    private Long priority = 5000L;

    @Column(name = "is_admin")
    private Boolean isAdmin = false;

    @Column(name = "is_initiator")
    private Boolean isInitiator = false;

    @Column(name = "is_last_checker")
    private Boolean isLastChecker = false;

}