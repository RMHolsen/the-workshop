## THIS IS FORM TAG, TRY WITH FORM_FOR
<%= form_tag("/people") do %>
      <% if @person.errors.any? %>
        <div id="error_explanation">
          <h2>There were some errors:</h2>
          <ul>
            <% @person.errors.full_messages.each do |message| %>
              <li><%= message %></li>
            <% end %>
          </ul>
        </div>
      <% end %>
     
     
      <div class="field<%= ' field_with_errors' if @person.errors[:name].any? %>">
        <%= label_tag "name", "Name" %>
        <%= text_field_tag "name", @person.name %>
      </div>
     
      <div class="field<%= ' field_with_errors' if @person.errors[:email].any? %>">
        <%= label_tag "email", "Email" %>
        <%= text_field_tag "email", @person.email %>
      </div>
     
      <%= submit_tag "Create" %>
    <% end %>

    <% if @guild.errors.any? %>
<div id="error_explanation">
  <h2>
    <%= pluralize(@guild.errors.count, "error") %> <!-- There were some errors !-->
    prohibited this guild from being saved:
  </h2>

  <ul>
  <% @guild.errors.full_messages.each do |msg| %>
    <li><%= msg %></li>
  <% end %>
  <!-- Iterates over the errors and lists each of them. !-->
  </ul>
</div>
<% end %>