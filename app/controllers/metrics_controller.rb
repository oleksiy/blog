require 'prometheus/client'

class MetricsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:index]

  def index
    prometheus = Prometheus::Client.registry
    metrics_text = prometheus.metrics.map do |metric|
      output = []
      output << "# HELP #{metric.name} #{metric.docstring}"
      output << "# TYPE #{metric.name} #{metric.type}"
      metric.values.each do |labels, value|
        labels_text = labels.map { |key, val| "#{key}=\"#{val}\""}.join(',')
        labels_text = "{#{labels_text}}" unless labels_text.empty?
        output << "#{metric.name}#{labels_text} #{value}"
      end
      output.join("\n")
    end.join("\n")
    render plain: metrics_text, content_type: 'text/plain'
  end
end
