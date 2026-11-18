{
  name: 'portal.configuration',
  value: std.manifestJsonMinified({
    backgroundImage: "assets/image.png",
    locale: setup.defaultLocale ,
    backgroundImageVeil: "blue2red",
    corporateText: "We are currently exploring how we can perform light customizations to TAO CE Portal \uD83D\uDE0B",
    corporateTitle: "Thanks for attending TAO CE Webinar!",
    defaultCurrency: "EUR",
    defaultTimeZone: "Europe/Luxembourg",
    linkVisibility: true,
    logoImage: "assets/mylogo.png",
    productName: "TAO Portal",
    selfRegistrationLink: { },
    ssoProviders: [ ],
    templates: [ ],
    title: "Log in to TAO",
  }),
}