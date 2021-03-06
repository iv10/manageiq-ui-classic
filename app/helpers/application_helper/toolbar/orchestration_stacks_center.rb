class ApplicationHelper::Toolbar::OrchestrationStacksCenter < ApplicationHelper::Toolbar::Basic
  button_group('orchestration_stack_vmdb', [
    select(
      :orchestration_stack_vmdb_choice,
      nil,
      t = N_('Configuration'),
      t,
      :items => [
        button(
          :orchestration_stack_delete,
          'pficon pficon-delete fa-lg',
          N_('Remove selected Orchestration Stacks from Inventory'),
          N_('Remove Orchestration Stacks from Inventory'),
          :url_parms    => "main_div",
          :send_checked => true,
          :confirm      => N_("Warning: The selected Orchestration Stacks and ALL of their components will be permanently removed!"),
          :enabled      => false,
          :onwhen       => "1+"),
      ]
    ),
  ])
  button_group('orchestration_stack_policy', [
    select(
      :orchestration_stack_policy_choice,
      nil,
      t = N_('Policy'),
      t,
      :enabled => false,
      :onwhen  => "1+",
      :items   => [
        button(
          :orchestration_stack_tag,
          'pficon pficon-edit fa-lg',
          N_('Edit Tags for the selected Orchestration Stacks'),
          N_('Edit Tags'),
          :url_parms    => "main_div",
          :send_checked => true,
          :enabled      => false,
          :onwhen       => "1+"),
      ]
    ),
  ])
  button_group('orchestration_stack_lifecycle', [
    select(
      :orchestration_stack_lifecycle_choice,
      nil,
      t = N_('Lifecycle'),
      t,
      :enabled => false,
      :onwhen  => "1+",
      :items   => [
        button(
          :orchestration_stack_retire,
          'fa fa-clock-o fa-lg',
          N_('Set Retirement Dates for the selected Orchestration Stacks'),
          N_('Set Retirement Dates'),
          :enabled      => false,
          :onwhen       => "1+",
          :url_parms    => "main_div",
          :send_checked => true),
        button(
          :orchestration_stack_retire_now,
          'fa fa-clock-o fa-lg',
          t = N_('Retire selected Orchestration Stacks'),
          t,
          :confirm      => N_("Retire the selected Orchestration Stacks?"),
          :enabled      => false,
          :onwhen       => "1+",
          :url_parms    => "main_div",
          :send_checked => true),
      ]
    ),
  ])
end
