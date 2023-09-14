package ru.totalexx.contractlifemarch.initialization;

import lombok.AllArgsConstructor;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;
import ru.totalexx.contractlifemarch.model.Role;
import ru.totalexx.contractlifemarch.repository.RoleRepository;
import ru.totalexx.contractlifemarch.repository.UserRepository;

import java.util.ArrayList;
import java.util.List;

@Component
@AllArgsConstructor
public class EntityInitializer {

    RoleRepository roleRepository;
    UserRepository userRepository;

    @EventListener
    public void appReady(ApplicationReadyEvent event) {
        addBaseRoles();
    }

    public void addBaseRoles() {
        if (roleRepository.count() != 0)
            return;

        Role initiator = Role
                .builder()
                .name("initeator")
                .localizedName("Инициатор")
                .priority(4L)
                .isAdmin(false)
                .build();
        Role clerk = Role
                .builder()
                .name("clerk")
                .localizedName("Делопроизводитель")
                .priority(3L)
                .isAdmin(false)
                .build();
        Role lawyer = Role
                .builder()
                .name("lawyer")
                .localizedName("Юрист")
                .priority(2L)
                .isAdmin(false)
                .build();
        Role generalDirector = Role
                .builder()
                .name("general_director")
                .localizedName("Генеральный директор")
                .priority(1L)
                .isAdmin(false)
                .build();
        Role admin = Role
                .builder()
                .name("admin")
                .localizedName("Администратор")
                .priority(0L)
                .isAdmin(false)
                .build();

        List<Role> roles = List.of(initiator, clerk, lawyer, generalDirector, admin);
        roleRepository.saveAll(roles);
    }

    public void addUsers() {
        
    }
}
