private var myViewController: LoginViewController = {
    guard let myViewController = UIStoryboard.myStoryboard.instantiateViewController(withIdentifier: LoginViewController.storyboardIdentifier) as? LoginViewController else {
        fatalError("Wrong View Controller")
    } // we added let before myViewController instance do declare a constance instance

    myViewController.doLogin = { isLoggedIn in
        self.modifyView()
    } // here we added isLooggedIn parameter for closure to make it be a type of Bool which it has to be

    return myViewController
}()

