package ru.totalexx.contractlifemarch.initialization;

import lombok.AllArgsConstructor;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import ru.totalexx.contractlifemarch.model.Role;
import ru.totalexx.contractlifemarch.model.User;
import ru.totalexx.contractlifemarch.repository.RoleRepository;
import ru.totalexx.contractlifemarch.repository.UserRepository;

import java.util.ArrayList;
import java.util.List;

@Component
@AllArgsConstructor
public class EntityInitializer {

    RoleRepository roleRepository;
    UserRepository userRepository;
    PasswordEncoder passwordEncoder;

    @EventListener
    public void appReady(ApplicationReadyEvent event) {
        addBaseRoles();
        addUsers();
    }

    public void addBaseRoles() {
        if (roleRepository.count() != 0)
            return;

        Role initiator = Role
                .builder()
                .name("initiator")
                .localizedName("Инициатор")
                .priority(4L)
                .isInitiator(true)
                .build();
        Role clerk = Role
                .builder()
                .name("clerk")
                .localizedName("Делопроизводитель")
                .priority(3L)
                .build();
        Role lawyer = Role
                .builder()
                .name("lawyer")
                .localizedName("Юрист")
                .priority(2L)
                .build();
        Role generalDirector = Role
                .builder()
                .name("general_director")
                .localizedName("Генеральный директор")
                .priority(1L)
                .isLastChecker(true)
                .build();
        Role admin = Role
                .builder()
                .name("admin")
                .localizedName("Администратор")
                .priority(0L)
                .isAdmin(true)
                .build();

        List<Role> roles = List.of(initiator, clerk, lawyer, generalDirector, admin);
        roleRepository.saveAll(roles);
    }

    public void addUsers() {
        if (userRepository.count() != 0)
            return;

        User initiator = User
                .builder()
                .name("Инициатор")
                .surname("Евгений")
                .companyName("Жизнь март")
                .email("user@mail.ru")
                .role(roleRepository.findByName("initiator").get())
                .password(passwordEncoder.encode("test"))
                .build();

        User initiator2 = User
                .builder()
                .name("Инициатор")
                .surname("Дмитрий")
                .companyName("Жизнь март")
                .email("user2@mail.ru")
                .role(roleRepository.findByName("initiator").get())
                .password(passwordEncoder.encode("test"))
                .build();

        User initiator3 = User
                .builder()
                .name("Инициатор")
                .surname("Виктор")
                .companyName("Жизнь март")
                .email("user3@mail.ru")
                .role(roleRepository.findByName("initiator").get())
                .password(passwordEncoder.encode("test"))
                .build();

        User clerk = User
                .builder()
                .name("Иван")
                .surname("Иванович")
                .companyName("Жизнь март")
                .email("clerk@lifemarch.ru")
                .role(roleRepository.findByName("clerk").get())
                .password(passwordEncoder.encode("test"))
                .build();

        User lawyer = User
                .builder()
                .name("Юрист")
                .surname("Иванович")
                .companyName("Жизнь март")
                .email("lawyer@lifemarch.ru")
                .role(roleRepository.findByName("lawyer").get())
                .password(passwordEncoder.encode("test"))
                .build();

        User generalDirector = User
                .builder()
                .name("Директор")
                .surname("Иванович")
                .companyName("Жизнь март")
                .email("general_director@lifemarch.ru")
                .role(roleRepository.findByName("general_director").get())
                .password(passwordEncoder.encode("test"))
                .build();

        User admin = User
                .builder()
                .name("Админ")
                .surname("Иванович")
                .companyName("Жизнь март")
                .email("admin@lifemarch.ru")
                .role(roleRepository.findByName("admin").get())
                .password(passwordEncoder.encode("test"))
                .build();

        List<User> users = List.of(initiator, initiator2, initiator3, clerk, lawyer, generalDirector, admin);
        userRepository.saveAll(users);
    }
}
