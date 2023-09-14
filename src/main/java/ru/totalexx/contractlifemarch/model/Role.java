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
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "localized_name")
    private String localizedName;

    @Column(name = "priority")
    private Long priority;

    @Column(name = "is_admin")
    private Boolean isAdmin;

}