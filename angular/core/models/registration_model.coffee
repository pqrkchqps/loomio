angular.module('diehardFundApp').factory 'RegistrationModel', (BaseModel) ->
  class RegistrationModel extends BaseModel
    @singular: 'registration'
    @plural: 'registrations'
    @serializableAttributes: ['name', 'email', 'password', 'passwordConfirmation', 'recaptcha']
    @serializationRoot: 'user'
