# frozen_string_literal: true
require 'prometheus/client'

prometheus = Prometheus::Client.registry

HTTP_REQUESTS_TOTAL = Prometheus::Client::Counter.new(
  :http_requests_total,
  docstring: 'A counter of total HTTP requests received',
  labels: [:controller, :action]
)

ARTICLE_COUNTER = Prometheus::Client::Counter.new(
  :article_created_total,
  docstring: 'A counter of total articles created'
)

prometheus.register(HTTP_REQUESTS_TOTAL)
prometheus.register(ARTICLE_COUNTER)