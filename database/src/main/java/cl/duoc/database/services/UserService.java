package cl.duoc.database.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.duoc.database.model.entities.LoginCredentials;
import cl.duoc.database.model.entities.UserEntity;
import cl.duoc.database.model.repository.UserRepository;

@Service
public class UserService {
    
    @Autowired
    UserRepository userRepository;

    // HELPER
    public boolean userExists(String username) {
        return userRepository.findUserByUsername(username) != null;
    }

    public UserEntity getUserById(String id) {
        try {
            int number = Integer.parseInt(id);
            return userRepository.findById(number).get();
        } catch (Exception e) {
            return null;
        }
    }

    public List<UserEntity> getAll() {
        return userRepository.findAll();
    }

    public UserEntity register(UserEntity userEntity) {
        try {
            if (userExists(userEntity.getUsername())) {
                return null;
            }
    
            return userRepository.save(userEntity);
        } catch (Exception e) {
            return null;
        }
    }

    public UserEntity login(LoginCredentials loginCredentials) {
        try {
            if (!userExists(loginCredentials.getUsername())) {
                return null;
            }

            return userRepository.userCanLogin(loginCredentials.getUsername(), loginCredentials.getPassword());
        } catch (Exception e) {
            return null;
        }
    }

    public UserEntity changePassword(String id, String password) {
        try {
            int number = Integer.parseInt(id);

            UserEntity user = userRepository.findById(number).get();
            if (!userExists(user.getUsername())) {
                return null;
            }

            user.setPassword(password);
            return userRepository.save(user);
        } catch (Exception e) {
            return null;
        }
    }
}
