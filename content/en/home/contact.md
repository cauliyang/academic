---
# An instance of the Contact widget.
# Documentation: https://sourcethemes.com/academic/docs/page-builder/
widget: contact

# This file represents a page section.
headless: true

# Order that this section appears on the page.
weight: 130

title: Contact
subtitle:

content:
  # Automatically link email and phone or display as text?
  autolink: true

  # Email form provider
  form:
    provider: formspree
    formspree:
      id: mrgjggga
    netlify:
      # Enable CAPTCHA challenge to reduce spam?
      captcha: true

  email: yangyang.li@northwestern.edu
  phone: 507-606-8822
  address:
    street: 303 E Superior St.
    city: Chicago
    region: IL
    postcode: '60611'
    country: United States
    country_code: US
  coordinates:
    latitude: '37.4275'
    longitude: '-122.1697'
  # appointment_url: 'https://calendly.com'
  contact_links:
    - icon: twitter
      icon_pack: fab
      name: DM Me
      link: https://twitter.com/yangyangliz5
      # - icon: skype
      #   icon_pack: fab
      #   name: Skype Me
      #   link: 'skype:echo123?call'
      # - icon: keybase
      #   icon_pack: fab
      #   name: Chat on Keybase
      #   link: 'https://keybase.io/'
      # - icon: comments
      #   icon_pack: fas
      #   name: Discuss on Forum
      #   link: 'https://discourse.gohugo.io'

design:
  columns: '2'
---
