part of openidconnect;

class RefreshRequest extends TokenRequest {
  RefreshRequest({
    required String clientId,
    String? clientSecret,
    required String redirectUrl,
    required Iterable<String> scopes,
    required String refreshToken,
    required OpenIdConfiguration configuration,
    Map<String, String>? additionalParameters,
  }) : super(
            configuration: configuration,
            clientId: clientId,
            clientSecret: clientSecret,
            grantType: "refresh_token",
            scopes: scopes,
            additionalParameters: {
              "refresh_token": refreshToken,
              ...(additionalParameters ?? {})
            });
}
