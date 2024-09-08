package vn.posales.salesmanagement.repository;

import java.util.List;
import vn.posales.salesmanagement.domain.User;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User save(User data);

    void deleteById(Long id);

    User findById(long id);

    List<User> findAll();

    List<User> findOneByEmail(String email);

    boolean existsByEmail(String email);

    User findByEmail(String email);
}
